<?php
class ModelFidoHomepage extends Model {
	public function addHomepage($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "homepage SET status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "'");
		$homepage_id = $this->db->getLastId();
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "homepage SET image = '" . $this->db->escape($data['image']) . "' WHERE homepage_id = '" . (int)$homepage_id . "'");
		}
		foreach ($data['homepage_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "homepage_description SET homepage_id = '" . (int)$homepage_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		if (isset($data['homepage_store'])) {
			foreach ($data['homepage_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "homepage_to_store SET homepage_id = '" . (int)$homepage_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
		$this->cache->delete('homepage');
		return $homepage_id;
	}

	public function editHomepage($homepage_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "homepage SET status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE homepage_id = '" . (int)$homepage_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "homepage_description WHERE homepage_id = '" . (int)$homepage_id . "'");
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "homepage SET image = '" . $this->db->escape($data['image']) . "' WHERE homepage_id = '" . (int)$homepage_id . "'");
		}
		foreach ($data['homepage_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "homepage_description SET homepage_id = '" . (int)$homepage_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		$this->db->query("DELETE FROM " . DB_PREFIX . "homepage_to_store WHERE homepage_id = '" . (int)$homepage_id . "'");
		if (isset($data['homepage_store'])) {		
			foreach ($data['homepage_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "homepage_to_store SET homepage_id = '" . (int)$homepage_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
		$this->cache->delete('homepage');
	}

	public function deleteHomepage($homepage_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "homepage WHERE homepage_id = '" . (int)$homepage_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "homepage_description WHERE homepage_id = '" . (int)$homepage_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "homepage_to_store WHERE homepage_id = '" . (int)$homepage_id . "'");
		$this->cache->delete('homepage');
	}	

	public function getHomepage($homepage_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "homepage WHERE homepage_id = '" . (int)$homepage_id . "'");
		return $query->row;
	}

	public function getHomepageDescriptions($homepage_id) {
		$homepage_description_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "homepage_description WHERE homepage_id = '" . (int)$homepage_id . "'");
		foreach ($query->rows as $result) {
			$homepage_description_data[$result['language_id']] = array(
				'title'       => $result['title'],
				'description' => $result['description']
			);
		}
		return $homepage_description_data;
	}

	public function getHomepages() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "homepage h LEFT JOIN " . DB_PREFIX . "homepage_description hd ON (h.homepage_id = hd.homepage_id) WHERE hd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY h.sort_order");
		return $query->rows;
	}

	public function getList($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "homepage h LEFT JOIN " . DB_PREFIX . "homepage_description hd ON (h.homepage_id = hd.homepage_id) WHERE hd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
			if (isset($data['sort'])) {
				$sql .= " ORDER BY " . $this->db->escape($data['sort']);
			} else {
				$sql .= " ORDER BY hd.title";	
			}
			if (isset($data['order'])) {
				$sql .= " " . $this->db->escape($data['order']);
			} else {
				$sql .= " ASC";
			}
			if (isset($data['start']) || isset($data['limit'])) {
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}	
			$query = $this->db->query($sql);
			return $query->rows;
		} else {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "homepage h LEFT JOIN " . DB_PREFIX . "homepage_description hd ON (h.homepage_id = hd.homepage_id) WHERE hd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY hd.title");
			return $query->rows;
		}
	}

	public function getHomepageStores($homepage_id) {
		$homepage_store_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "homepage_to_store WHERE homepage_id = '" . (int)$homepage_id . "'");
		foreach ($query->rows as $result) {
			$homepage_store_data[] = $result['store_id'];
		}
		return $homepage_store_data;
	}

	public function getTotalHomepages() {
		$this->checkHomepages();
     	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "homepage");
		return $query->row['total'];
	}	

	public function checkHomepages() {
		$create_homepage = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "homepage` (`homepage_id` int(11) NOT NULL auto_increment, `status` int(1) NOT NULL default '0', `sort_order` int(3) NOT NULL default '0', `image` varchar(255) collate utf8_bin default NULL, PRIMARY KEY  (`homepage_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_homepage);
		$create_homepage_descriptions = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "homepage_description` (`homepage_id` int(11) NOT NULL default '0', `language_id` int(11) NOT NULL default '0', `title` varchar(64) collate utf8_bin NOT NULL default '', `description` text collate utf8_bin NOT NULL, PRIMARY KEY  (`homepage_id`,`language_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_homepage_descriptions);
		$create_homepage_to_store = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "homepage_to_store` (`homepage_id` int(11) NOT NULL, `store_id` int(11) NOT NULL, PRIMARY KEY  (`homepage_id`, `store_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_homepage_to_store);
	}

	function getHomepageModules() {
		$this->language->load('module/homepage');
		$exempted_modules = file(DIR_SYSTEM . 'helper/exempted_modules.txt');
		$exempted_list = explode(',', $exempted_modules[0]);
		$module_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = 'module'");
		foreach ($query->rows as $result) {
			if ($this->config->get($result['key'] . '_position') == 'home') {
				if (in_array($result['key'], $exempted_list)) {
					$welcomed = $this->config->get($result['key'] . '_welcomed');
					$tabbed = 'exempt';
				} else {
					$welcomed = 'exempt';
					$tabbed = $this->config->get($result['key'] . '_tabbed');
				}
				$this->load->language('module/' . $result['key']);
				$module_data[] = array(
					'name'       => $this->language->get('heading_title'),
					'code'       => $result['key'],
					'welcomed'   => $welcomed,
					'tabbed'     => $tabbed,
					'status'     => $this->config->get($result['key'] . '_status') ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
					'sort_order' => $this->config->get($result['key'] . '_sort_order')
				);
			}
		}
		$sort_order = array(); 
		foreach ($module_data as $key => $value) {
      		$sort_order[$key] = $value['sort_order'];
    	}
    	array_multisort($sort_order, SORT_ASC, $module_data);
    	return $module_data;
	}
}
?>
