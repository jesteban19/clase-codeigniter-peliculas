<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('welcome_message',array('name'=>'Soy tester :D'));
	}

	public function key()
	{
		echo md5("peliculas");
	}

}

/* End of file test.php */
/* Location: ./application/controllers/test.php */