{**
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 *}
<div
  class="js-product-details"
  data-product="{$product.embedded_attributes|json_encode}"
>
{*    <div id="product_details_collapse" class="accordion-collapse collapse {if !$product.description}show{/if}" aria-labelledby="product_details_heading">*}
{*      <div class="accordion-body">*}
        <ul class="details__list">
{*          {block name='product_manufacturer'}*}
{*            {if isset($product_manufacturer->id)}*}
{*              <li class="details__item details__item--manufacturer">*}
{*                <div class="details__left">*}
{*                  <span class="details__title">{l s='Brand' d='Shop.Theme.Catalog'}</span>*}
{*                </div>*}

{*                <div class="details__right">*}
{*                  {if isset($product_manufacturer.image.bySize.small_default.url)}*}
{*                    <a href="{$product_manufacturer->url}">*}
{*                      <img src="{$product_manufacturer.image.bySize.small_default.url}"*}
{*                        class="img-fluid details__manufacturer-logo"*}
{*                        alt="{$product_manufacturer->name}"*}
{*                        loading="lazy"*}
{*                        width="{$product_manufacturer.image.bySize.small_default.width}"*}
{*                        height="{$product_manufacturer.image.bySize.small_default.height}"*}
{*                        aria-label="{l s='Brand: %brand_name%' sprintf=['%brand_name%' => $product_manufacturer->name] d='Shop.Theme.Catalog'}"*}
{*                      >*}
{*                    </a>*}
{*                  {else}*}
{*                    <a href="{$product_manufacturer->url}">{$product_manufacturer->name}</a>*}
{*                  {/if}*}
{*                </div>*}
{*              </li>*}
{*            {/if}*}
{*          {/block}*}

          {block name='product_reference'}
            {if !empty($product.reference_to_display)}
              <li class="details__item details__item--reference">
                <div class="details__left">
                  <span class="details__title">{l s='Reference' d='Shop.Theme.Catalog'}</span>
                </div>

                <div class="details__right">
                  <span>{$product.reference_to_display}</span>
                </div>
              </li>
            {/if}
          {/block}

          {block name='product_quantities'}
            {if $product.show_quantities}
              <li class="details__item details__item--quantities">
                <div class="details__left">
                  <span class="details__title">{l s='In stock' d='Shop.Theme.Catalog'}</span>
                </div>

                <div class="details__right">
                  <span data-stock="{$product.quantity}" data-allow-oosp="{$product.allow_oosp}">{$product.quantity} {$product.quantity_label}</span>
                </div>
              </li>
            {/if}
          {/block}

          {block name='product_availability_date'}
            {if $product.availability_date}
              <li class="details__item details__item--availability-date">
                <div class="details__left">
                  <span class="details__title">{l s='Availability date' d='Shop.Theme.Catalog'}</span>
                </div>

                <div class="details__right">
                  <span>{$product.availability_date}</span>
                </div>
              </li>
            {/if}
          {/block}

          {* if product have specific references, a table will be added to product details section *}
          {block name='product_condition'}
            {if $product.condition}
              <li class="details__item details__item--condition">
                <div class="details__left">
                  <span class="details__title">{l s='Condition' d='Shop.Theme.Catalog'}</span>
                </div>

                <div class="details__right">
                  <span>{$product.condition.label}</span>
                </div>
              </li>
            {/if}
          {/block}

          {block name='product_specific_references'}
            {if !empty($product.specific_references)}
              {foreach from=$product.specific_references item=reference key=key}
                <li class="details__item details__item--{$key|classname}">
                  <div class="details__left">
                    <span class="details__title">{$key}</span>
                  </div>

                  <div class="details__right">
                    <span>{$reference}</span>
                  </div>
                </li>
              {/foreach}
            {/if}
          {/block}
        </ul>
{*      </div>*}
{*  </div>*}

</div>
