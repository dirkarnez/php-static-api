<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php';

$app = new \Slim\App;

$app->get('/names/{name}', function (Request $request, Response $response, array $args) {
    $name = $args['name'];

    $names = array("Peter", "Paul", "Mary");
    array_push($names, $name);

    sort($names);

    return $response->withJson($names);
});

$app->run();

?>
