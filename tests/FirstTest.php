<?php

namespace Tcoch\Netdoc\Tests;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;
use Tcoch\Netdoc\Parser;

#[CoversClass(Parser::class)]
class FirstTest extends TestCase
{
    public function testFirst(): void
    {
        $parser = (new Parser());
        self::assertSame($parser->text(), "Text");
    }
}
