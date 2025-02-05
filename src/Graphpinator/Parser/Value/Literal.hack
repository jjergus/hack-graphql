namespace Graphpinator\Parser\Value;

abstract class Literal extends \Graphpinator\Parser\Value\Value {
    abstract const type THackType;

    final public function __construct(
        private \Graphpinator\Common\Location $location,
        private this::THackType $value
    ) {
        parent::__construct($location);
    }

    final public function getRawValue(): this::THackType {
        return $this->value;
    }
}
