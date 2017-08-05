<?php
class ControllerCommonManufacturers extends Controller {
	public function index() {
		$this->load->language('common/manufacturers');
		$this->load->model('catalog/manufacturer');

		$data['text_manufacturers'] = $this->language->get('text_manufacturers');
		$data['manufacturers_all'] = $this->model_catalog_manufacturer->getAllManufacturers();

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
            $data['base_url'] = $this->config->get('config_ssl');
        } else {
            $data['base_url'] = $this->config->get('config_url');
        }

		return $this->load->view('common/manufacturer', $data);
	}
}