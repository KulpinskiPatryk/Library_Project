{extends file="main.tpl"}

{block name=top}



{/block}

{block name=bottom}



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
{foreach $books as $p}
{strip}
	<tr>
		<td>{$p["id_books"]}</td>
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
