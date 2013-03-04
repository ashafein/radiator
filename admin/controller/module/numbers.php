<?php
class ControllerModuleNumbers extends Controller {

    private $error = array();

    public function index() {

        $this->load->language('module/numbers'); // Это путь относительно директории ROOT/admin
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('fido/numbers');
        $this->load->model('setting/setting');
        $this->model_fido_numbers->checkNumbers();

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('coolmodool', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }



        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['save'] = $this->url->link('module/numbers/update', 'token=' . $this->session->data['token'], 'SSL');
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');


        $this->data['button_save']   = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');

        $this->data['contact_title'] = $this->language->get('contact_title');
        $this->data['enabled_title'] = $this->language->get('enabled_title');
        $this->data['ishelp_title']  = $this->language->get('ishelp_title');


        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        if (isset($this->error['code'])) {
            $this->data['error_code'] = $this->error['code'];
        } else {
            $this->data['error_code'] = '';
        }

        $numbers_array = array();

        $numbers_array = $this->model_fido_numbers->getNumbers();
        for($i = 0; $i < 5; $i++){

            $this->data['numbers'][$i]['num_id']= $numbers_array[$i]['num_id'];
            $this->data['numbers'][$i]['number']= $numbers_array[$i]['number'];
            $this->data['numbers'][$i]['status']= $numbers_array[$i]['status'];
            $this->data['numbers'][$i]['ishelp']= $numbers_array[$i]['ishelp'];
         }


        $this->template = 'module/numbers.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );
        $this->data['success'] = '';
       $this->response->setOutput($this->render());
    }


    public function update() {
        $this->load->language('module/numbers');
        $this->load->model('fido/numbers');

        $this->document->setTitle($this->language->get('heading_title'));


        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
            for($i = 0; $i < 5; $i++) {
                     $this->data['num_id'] = $this->request->post['num_id_'.$i];
                     $this->data['number'] = $this->request->post['number_'.$i];
                     if(isset($this->request->post['status_'.$i])){ $this->data['status'] = (int)$this->request->post['status_'.$i];} else $this->data['status'] = 0;
                     if(isset($this->request->post['ishelp_'.$i])){ $this->data['ishelp'] = (int)$this->request->post['ishelp_'.$i];} else $this->data['ishelp'] = 0;

                     $this->model_fido_numbers->editNumber($this->data ,$this->request->post);
                     $this->data['action'] = $this->url->link('module/numbers/update', 'token=' . $this->session->data['token'] , 'SSL');

            }
            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('module/numbers', 'token=' . $this->session->data['token'], 'SSL'));
        }

    }

}
?>
