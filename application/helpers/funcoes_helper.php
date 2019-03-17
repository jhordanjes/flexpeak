<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('config_upload')):
	function config_upload($path='./uploads/', $types='jpg|png', $size=512){
		$config['upload_path'] = $path;
		$config['allowed_types'] = $types;
		$config['max_size'] = $size;
		return $config;
	}
endif;