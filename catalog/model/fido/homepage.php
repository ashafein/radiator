<?php
class ModelFidoHomepage extends Model {
	public function getHomepages() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "homepage h LEFT JOIN " . DB_PREFIX . "homepage_description hd ON (h.homepage_id = hd.homepage_id) LEFT JOIN " . DB_PREFIX . "homepage_to_store h2s on (h.homepage_id = h2s.homepage_id) WHERE h.status = '1' AND hd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND h2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY h.sort_order ASC");
		return $query->rows;
	}

	function getHomepageModules() {
		$this->language->load('module/homepage');
		$exempted_modules = file(DIR_SYSTEM . 'helper/exempted_modules.txt');
		$exempted_list = explode(',', $exempted_modules[0]);
		$module_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = 'module'");
		foreach ($query->rows as $result) {
			if ($this->config->get($result['key'] . '_status') && ($this->config->get($result['key'] . '_position') == 'home')) {
				if (in_array($result['key'], $exempted_list)) {
					$exempted = TRUE;
					$welcomed = $this->config->get($result['key'] . '_welcomed');
					$tabbed = FALSE;
				} else {
					$exempted = FALSE;
					$welcomed = FALSE;
					$tabbed = $this->config->get($result['key'] . '_tabbed');
				}
				$this->load->language('module/' . $result['key']);
				$module_data[] = array(
					'code'       => $result['key'],
					'exempted'   => $exempted,
					'welcomed'   => $welcomed,
					'tabbed'     => $tabbed,
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
