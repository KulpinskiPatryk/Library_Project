{extends file="main.tpl"}

{block name=top}

<div class="bottom-margin">
<form class="pure-form pure-form-stacked" action="{$conf->action_url}BorrowList">
	<legend>Opcje wyszukiwania</legend>
	<fieldset>
		<input type="text" placeholder="users_id_user" name="users_id_user" value="{$searchForm->users_id_user}" /><br />
		<button type="submit" class="pure-button pure-button-primary">Filtruj</button>
	</fieldset>
</form>
</div>	

{/block}

{block name=bottom}

<div class="bottom-margin">
<a class="pure-button button-success" href="{$conf->action_root}BorrowNew">+ Nowa osoba</a>
</div>	
<table id="a" class="pure-table pure-table-bordered">
<thead>
	<tr>
		<th>dasfgasfr</th>
		<th>login</th>
		<th>password</th>
		<th>user_type</th>
		<th>kurwa</th>
	</tr>
</thead>
<tbody>
{foreach $borrowed_books as $p}
{strip}
	<tr>
		<td>{$p["id_borrowed"]}</td>
		<td>{$p["date_of_borrow"]}</td>
		<td>{$p["date_to_return"]}</td>
		<td>{$p["books_id_book"]}</td>
		<td>{$p["users_id_user"]}</td>
		<td>
			<a class="button-small pure-button button-secondary" href="{$conf->action_url}borrowEdit/{$p['users_id_user']}">Edytuj</a>
			&nbsp;
			<a class="button-small pure-button button-warning" href="{$conf->action_url}borrowDelete/{$p['users_id_user']}">Usuń</a>
		</td>
	</tr>
{/strip}
{/foreach}
</tbody>
</table>

{/block}
