<?php

use core\App;
use core\Utils;

App::getRouter()->setDefaultRoute('personList'); // akcja/ścieżka domyślna
App::getRouter()->setLoginRoute('login'); // akcja/ścieżka na potrzeby logowania (przekierowanie, gdy nie ma dostępu)

Utils::addRoute('personList',    'PersonListCtrl');
Utils::addRoute('borrowList',    'BorrowListCtrl');
Utils::addRoute('bookList',    'BookListCtrl');
Utils::addRoute('loginShow',     'LoginCtrl');
Utils::addRoute('login',         'LoginCtrl');
Utils::addRoute('logout',        'LoginCtrl');
Utils::addRoute('personNew',     'PersonEditCtrl',	['admin']);
Utils::addRoute('personEdit',    'PersonEditCtrl',	['user','admin']);
Utils::addRoute('personSave',    'PersonEditCtrl',	['user','admin']);
Utils::addRoute('personDelete',  'PersonEditCtrl',	['admin']);
Utils::addRoute('borrowNew',     'BorrowEditCtrl',	['admin']);
Utils::addRoute('borrowEdit',    'BorrowEditCtrl',	['user','admin']);
Utils::addRoute('borrowSave',    'BorrowEditCtrl',	['user','admin']);
Utils::addRoute('borrowDelete',  'BorrowEditCtrl',	['admin']);