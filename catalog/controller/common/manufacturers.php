<?php
class ControllerCommonManufacturers extends Controller {
	public function index() {
		$this->load->language('common/manufacturers');
		$this->load->model('catalog/manufacturer');

		$data['text_manufacturers'] = $this->language->get('text_manufacturers');
		$data['manufacturers_all'] = $this->model_catalog_manufacturer->getAllManufacturers();

		return $this->load->view('common/manufacturer', $data);
	}
}