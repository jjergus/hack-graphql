/**
 * This file is generated. Do not modify it manually!
 *
 * To re-generate this file run vendor/bin/hacktest
 *
 *
 * @generated SignedSource<<44300e4bf463295c174cb50f838e36e6>>
 */
namespace Slack\GraphQL\Test\Generated;
use namespace Slack\GraphQL;
use namespace Slack\GraphQL\Types;
use namespace HH\Lib\{C, Dict};

final class Human extends \Slack\GraphQL\Types\ObjectType {

  const NAME = 'Human';
  const type THackType = \Human;
  const keyset<string> FIELD_NAMES = keyset[
    'favorite_color',
    'id',
    'is_active',
    'name',
    'team',
  ];
  const dict<string, classname<Types\InterfaceType>> INTERFACES = dict[
    'User' => User::class,
  ];

  public function getFieldDefinition(
    string $field_name,
  ): ?GraphQL\IResolvableFieldDefinition<this::THackType> {
    switch ($field_name) {
      case 'favorite_color':
        return new GraphQL\FieldDefinition(
          'favorite_color',
          FavoriteColor::nullableOutput(),
          dict[],
          async ($parent, $args, $vars) ==> $parent->getFavoriteColor(),
        );
      case 'id':
        return new GraphQL\FieldDefinition(
          'id',
          Types\IntType::nullableOutput(),
          dict[],
          async ($parent, $args, $vars) ==> $parent->getId(),
        );
      case 'is_active':
        return new GraphQL\FieldDefinition(
          'is_active',
          Types\BooleanType::nullableOutput(),
          dict[],
          async ($parent, $args, $vars) ==> $parent->isActive(),
        );
      case 'name':
        return new GraphQL\FieldDefinition(
          'name',
          Types\StringType::nullableOutput(),
          dict[],
          async ($parent, $args, $vars) ==> $parent->getName(),
        );
      case 'team':
        return new GraphQL\FieldDefinition(
          'team',
          Team::nullableOutput(),
          dict[],
          async ($parent, $args, $vars) ==> await $parent->getTeam(),
        );
      default:
        return null;
    }
  }
}
