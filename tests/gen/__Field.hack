/**
 * This file is generated. Do not modify it manually!
 *
 * To re-generate this file run vendor/bin/hacktest
 *
 *
 * @generated SignedSource<<e8138540d63396d06f784426b6821054>>
 */
namespace Slack\GraphQL\Test\Generated;
use namespace Slack\GraphQL;
use namespace Slack\GraphQL\Types;
use namespace HH\Lib\{C, Dict};

final class __Field extends \Slack\GraphQL\Types\ObjectType {

  const NAME = '__Field';
  const type THackType = \Slack\GraphQL\Introspection\__Field;
  const keyset<string> FIELD_NAMES = keyset[
    'name',
    'description',
    'args',
    'type',
    'isDeprecated',
    'deprecationReason',
  ];

  public function getFieldDefinition(
    string $field_name,
  ): ?GraphQL\IResolvableFieldDefinition<this::THackType> {
    switch ($field_name) {
      case 'name':
        return new GraphQL\FieldDefinition(
          'name',
          Types\StringOutputType::nullable(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['name'],
        );
      case 'description':
        return new GraphQL\FieldDefinition(
          'description',
          Types\StringOutputType::nullable(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['description'] ?? null,
        );
      case 'args':
        return new GraphQL\FieldDefinition(
          'args',
          __InputValue::nonNullable()->nullableListOf(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['args'],
        );
      case 'type':
        return new GraphQL\FieldDefinition(
          'type',
          __Type::nullable(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['type'],
        );
      case 'isDeprecated':
        return new GraphQL\FieldDefinition(
          'isDeprecated',
          Types\BooleanOutputType::nullable(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['isDeprecated'],
        );
      case 'deprecationReason':
        return new GraphQL\FieldDefinition(
          'deprecationReason',
          Types\StringOutputType::nullable(),
          dict[],
          async ($parent, $args, $vars) ==> $parent['deprecationReason'] ?? null,
        );
      default:
        return null;
    }
  }

  public static function introspect(
    GraphQL\Introspection\__Schema $schema,
  ): GraphQL\Introspection\NamedTypeDeclaration {
    return new GraphQL\Introspection\NamedTypeDeclaration(shape(
      'kind' => GraphQL\Introspection\__TypeKind::OBJECT,
      'name' => static::NAME,
      'description' => '',
      'fields' => vec[
        shape(
          'name' => 'name',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, 'String'))->nonNullable(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
        shape(
          'name' => 'description',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, 'String'))->nonNullable(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
        shape(
          'name' => 'args',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, '__InputValue'))->nonNullable()->nonNullableListOf(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
        shape(
          'name' => 'type',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, '__Type'))->nonNullable(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
        shape(
          'name' => 'isDeprecated',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, 'Boolean'))->nonNullable(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
        shape(
          'name' => 'deprecationReason',
          'type' => (new GraphQL\Introspection\NamedTypeReference($schema, 'String'))->nonNullable(),
          'args' => vec[],
          'isDeprecated' => false,
        ),
      ],
    ));
  }
}
