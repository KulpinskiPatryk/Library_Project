{extends file="main.tpl"}

{block name=top}

<div class="bottom-margin">
<form class="pure-form pure-form-stacked" action="{$conf->action_url}personList">
	<legend>Opcje wyszukiwania</legend>
	<fieldset>
		<input type="text" placeholder="id_user" name="id_user" value="{$searchForm->id_user}" /><br />
		<button type="submit" class="pure-button pure-button-primary">Filtruj</button>
	</fieldset>
</form>
</div>	

{/block}

{block name=bottom}

<div class="bottom-margin">
<a class="pure-button button-success" href="{$conf->action_root}personNew">+ Nowa osoba</a>
</div>	

<table id="tab_people" class="pure-table pure-table-bordered">
<thead>
	<tr>
		<th>id_user</th>
		<th>login</th>
		<th>password</th>
		<th>user_type</th>
		<th>opcje</th>
	</tr>
</thead>
<tbody>
{foreach $users as $p}
{strip}
	<tr>
		<td>{$p["id_user"]}</td>
		<td>{$p["login"]}</td>
		<td>{$p["password"]}</td>
		<td>{$p["user_type_id_type"]}</td>
		<td>
			<a class="button-small pure-button button-secondary" href="{$conf->action_url}personEdit/{$p['id_user']}">Edytuj</a>
			&nbsp;
			<a class="button-small pure-button button-warning" href="{$conf->action_url}personDelete/{$p['id_user']}">Usuń</a>
		</td>
	</tr>
{/strip}
{/foreach}
</tbody>
</table>

{/block}
