<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
        $_REQUEST['body_class'] = 'home';
        $_REQUEST['page_bg_style'] = '<style type="text/css">
                                                    #container_bg {
                                                    width:1000px;
                                                    margin-left: auto;
                                                    margin-right: auto;
                                                    text-align: left;
                                                    background: none;
                                                    border: none;
                                                    margin-bottom:none;
                                                    padding-left:none;
                                                    padding-right:none;
                                                    padding-top:0;
                                                    border-radius:none;
                                                    padding-top:0;
                                                    margin-top:0;
                                                    {
                                                    </style>';
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);

		$this->response->setOutput($this->render());
	}
}
?>