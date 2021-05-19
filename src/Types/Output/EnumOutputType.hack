namespace Slack\GraphQL\Types;

use namespace HH\Lib\Vec;
use namespace Slack\GraphQL\Introspection;

abstract class EnumOutputType extends LeafOutputType {
    abstract const type THackType as arraykey;
    abstract const \HH\enumname<this::THackType> HACK_ENUM;
    const type TCoerced = string;

    /**
     * Enum values are surfaced to GraphQL clients as their name, not their internal value.
     */
    <<__Override>>
    final protected function coerce(this::THackType $value): string {
        $hack_enum = static::HACK_ENUM;
        return $hack_enum::getNames()[$value];
    }

    <<__Override>>
    final public static function introspect(Introspection\__Schema $_): Introspection\NamedTypeDeclaration {
        $hack_enum = static::HACK_ENUM;
        return new Introspection\NamedTypeDeclaration(shape(
            'name' => static::NAME,
            'kind' => Introspection\__TypeKind::ENUM,
            'enumValues' => Vec\map(
                $hack_enum::getNames(),
                $name ==> shape('name' => $name, 'isDeprecated' => false),
            ),
        ));
    }
}
