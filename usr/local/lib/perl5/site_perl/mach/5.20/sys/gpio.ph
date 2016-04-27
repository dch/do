require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__GPIO_H__)) {
    eval 'sub __GPIO_H__ () {1;}' unless defined(&__GPIO_H__);
    require 'sys/ioccom.ph';
    eval 'sub GPIO_PIN_LOW () {0x;}' unless defined(&GPIO_PIN_LOW);
    eval 'sub GPIO_PIN_HIGH () {0x1;}' unless defined(&GPIO_PIN_HIGH);
    eval 'sub GPIOMAXNAME () {64;}' unless defined(&GPIOMAXNAME);
    eval 'sub GPIO_PIN_INPUT () {0x1;}' unless defined(&GPIO_PIN_INPUT);
    eval 'sub GPIO_PIN_OUTPUT () {0x2;}' unless defined(&GPIO_PIN_OUTPUT);
    eval 'sub GPIO_PIN_OPENDRAIN () {0x4;}' unless defined(&GPIO_PIN_OPENDRAIN);
    eval 'sub GPIO_PIN_PUSHPULL () {0x8;}' unless defined(&GPIO_PIN_PUSHPULL);
    eval 'sub GPIO_PIN_TRISTATE () {0x10;}' unless defined(&GPIO_PIN_TRISTATE);
    eval 'sub GPIO_PIN_PULLUP () {0x20;}' unless defined(&GPIO_PIN_PULLUP);
    eval 'sub GPIO_PIN_PULLDOWN () {0x40;}' unless defined(&GPIO_PIN_PULLDOWN);
    eval 'sub GPIO_PIN_INVIN () {0x80;}' unless defined(&GPIO_PIN_INVIN);
    eval 'sub GPIO_PIN_INVOUT () {0x100;}' unless defined(&GPIO_PIN_INVOUT);
    eval 'sub GPIO_PIN_PULSATE () {0x200;}' unless defined(&GPIO_PIN_PULSATE);
    eval 'sub GPIOMAXPIN () { &_IOR(ord(\'G\'), 0, \'int\');}' unless defined(&GPIOMAXPIN);
    eval 'sub GPIOGETCONFIG () { &_IOWR(ord(\'G\'), 1, \'struct gpio_pin\');}' unless defined(&GPIOGETCONFIG);
    eval 'sub GPIOSETCONFIG () { &_IOW(ord(\'G\'), 2, \'struct gpio_pin\');}' unless defined(&GPIOSETCONFIG);
    eval 'sub GPIOGET () { &_IOWR(ord(\'G\'), 3, \'struct gpio_req\');}' unless defined(&GPIOGET);
    eval 'sub GPIOSET () { &_IOW(ord(\'G\'), 4, \'struct gpio_req\');}' unless defined(&GPIOSET);
    eval 'sub GPIOTOGGLE () { &_IOWR(ord(\'G\'), 5, \'struct gpio_req\');}' unless defined(&GPIOTOGGLE);
}
1;
