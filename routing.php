<?php

use core\App;
use core\Utils;

App::getRouter()->setDefaultRoute('BookList'); // akcja/ścieżka domyślna
App::getRouter()->setLoginRoute('login'); // akcja/ścieżka na potrzeby logowania (przekierowanie, gdy nie ma dostępu)

Utils::addRoute('BookList',    'BookListCtrl');
Utils::addRoute('BorrowBookList',    'BorrowBookListCtrl');
Utils::addRoute('UserList',    'UserListCtrl');
Utils::addRoute('loginShow',     'LoginCtrl');
Utils::addRoute('login',         'LoginCtrl');
Utils::addRoute('logout',        'LoginCtrl');
Utils::addRoute('UserNew',     'UserEditCtrl',	['admin']);
Utils::addRoute('UserEdit',    'UserEditCtrl',	['admin']);
Utils::addRoute('UserSave',    'UserEditCtrl',	['admin']);
Utils::addRoute('UserDelete',  'UserEditCtrl',	['admin']);
Utils::addRoute('BookNew',     'BookEditCtrl',	['user','bookkeper']);
Utils::addRoute('BookEdit',    'BookEditCtrl',	['user','bookkeper']);
Utils::addRoute('BookSave',    'BookEditCtrl',	['user','bookkeper']);
Utils::addRoute('BookDelete',  'BookEditCtrl',	['bookkeper']);
Utils::addRoute('BorrowBookNew',     'BorrowBookEditCtrl',	['bookkeper']);
Utils::addRoute('BorrowBookEdit',    'BorrowBookEditCtrl',	['bookkeper']);
Utils::addRoute('BorrowBookSave',    'BorrowBookEditCtrl',	['bookkeper']);
Utils::addRoute('BorrowBookDelete',  'BorrowBookEditCtrl',	['bookkeper']);