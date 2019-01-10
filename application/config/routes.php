<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

/*
## $route['default_controller'] = 'welcome';
## $route['404_override'] = '';
## $route['translate_uri_dashes'] = FALSE;
*/
$route['business_partners'] = 'business_partners/view';
$route['business_partners/(:any)'] = 'business_partners/view/$1';

$route['contact_us'] = 'contact_us/index';

$route['brochure/(:any)'] = 'brochures/get_brochure_id/$1';
$route['brochure'] = 'brochures/index';

$route['satellite_products/product_info/(:any)'] = 'satellite_products/product_info/$1';
$route['satellite_products/(:any)'] = 'satellite_products/index/$1';
$route['satellite_products'] = 'satellite_products/index';

$route['elevator_products/product_info/(:any)'] = 'elevator_products/product_info/$1';
$route['elevator_products/(:any)'] = 'elevator_products/index/$1';
$route['elevator_products'] = 'elevator_products/index';

$route['industrial_and_security_products/product_info/(:any)'] = 'industrial_and_security_products/product_info/$1';
$route['industrial_and_security_products/(:any)'] = 'industrial_and_security_products/index/$1';
$route['industrial_and_security_products'] = 'industrial_and_security_products/index';

$route['floodgate_products/product_info/(:any)'] = 'floodgate_products/product_info/$1';
$route['floodgate_products'] = 'floodgate_products/index';

$route['genserv_projects/project_info/(:any)'] = 'genserv_projects/project_info/$1';
$route['genserv_projects/(:any)'] = 'genserv_projects/index/$1';
$route['genserv_projects'] = 'genserv_projects/index';

$route['news/index/(:any)'] = 'news/index/$1';
$route['news'] = 'news/index';

$route['jobs/index/(:any)'] = 'jobs/index/$1';
$route['jobs'] = 'jobs/index';

$route['default_controller'] = 'pages/view';
$route['(:any)'] = 'pages/view/$1';
