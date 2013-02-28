<?php  
class ControllerModulecoolmodool extends Controller {
	protected function index() {
		$this->language->load('module/coolmodool');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = HTTPS_IMAGE;
		} else {
			$server = HTTP_IMAGE;
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner1') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner1'))) {
			$this->data['cbanner1'] = $server . $this->config->get('config_cbanner1');
		} else {
			$this->data['cbanner1'] = '';
		}
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = HTTPS_IMAGE;
		} else {
			$server = HTTP_IMAGE;
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner2') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner2'))) {
			$this->data['cbanner2'] = $server . $this->config->get('config_cbanner2');
		} else {
			$this->data['cbanner2'] = '';
		}
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = HTTPS_IMAGE;
		} else {
			$server = HTTP_IMAGE;
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner3') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner3'))) {
			$this->data['cbanner3'] = $server . $this->config->get('config_cbanner3');
		} else {
			$this->data['cbanner3'] = '';
		}
		
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/coolmodool.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/coolmodool.tpl';
		} else {
			$this->template = 'default/template/module/coolmodool.tpl';
		}
		
		$this->render();
	}
}
?>