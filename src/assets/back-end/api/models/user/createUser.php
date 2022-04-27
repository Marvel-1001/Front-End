<?php

//if user id is not unique, incremate suffix

//create unique user id
function randomid():String{
$prefix = '';

//
$suffix = '';
return uniqid($prefix,false).$suffix;
}

#echo randomid();
