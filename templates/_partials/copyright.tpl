{**
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 *}
{block name='copyright'}
  <div class="copyright">
    {block name='copyright_link'}
{*      // @DS2026*}
{*      <a href="https://www.prestashop-project.org/" target="_blank" rel="noopener noreferrer nofollow">*}
{*        {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}*}
{*      </a>*}
      <span>
        {l s='%copyright% - o.k.-international %year%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
      </span>
    {/block}
  </div>
{/block}
