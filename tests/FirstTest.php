<?php

namespace Tcoch\Netdoc\Tests;

use PHPUnit\Framework\TestCase;
use Tcoch\Netdoc\Parser;

class FirstTest extends TestCase
{
    public function testFirst(): void
    {
        $parser = (new Parser());
        self::assertSame($parser->text(), "Text");
    }
}
