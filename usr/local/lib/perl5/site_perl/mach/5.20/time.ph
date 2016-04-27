require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_TIME_H_)) {
    eval 'sub _TIME_H_ () {1;}' unless defined(&_TIME_H_);
    require 'sys/cdefs.ph';
    require 'sys/_null.ph';
    require 'sys/_types.ph';
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) > 0 && (defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) < 200112|| (defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub CLK_TCK () {128;}' unless defined(&CLK_TCK);
    }
    eval 'sub CLOCKS_PER_SEC () {128;}' unless defined(&CLOCKS_PER_SEC);
    unless(defined(&_CLOCK_T_DECLARED)) {
	eval 'sub _CLOCK_T_DECLARED () {1;}' unless defined(&_CLOCK_T_DECLARED);
    }
    unless(defined(&_TIME_T_DECLARED)) {
	eval 'sub _TIME_T_DECLARED () {1;}' unless defined(&_TIME_T_DECLARED);
    }
    unless(defined(&_SIZE_T_DECLARED)) {
	eval 'sub _SIZE_T_DECLARED () {1;}' unless defined(&_SIZE_T_DECLARED);
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199309) {
	unless(defined(&_CLOCKID_T_DECLARED)) {
	    eval 'sub _CLOCKID_T_DECLARED () {1;}' unless defined(&_CLOCKID_T_DECLARED);
	}
	unless(defined(&_TIMER_T_DECLARED)) {
	    eval 'sub _TIMER_T_DECLARED () {1;}' unless defined(&_TIMER_T_DECLARED);
	}
	require 'sys/timespec.ph';
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
	unless(defined(&_PID_T_DECLARED)) {
	    eval 'sub _PID_T_DECLARED () {1;}' unless defined(&_PID_T_DECLARED);
	}
    }
    if(!defined(&CLOCK_REALTIME)  && (defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
	eval 'sub CLOCK_REALTIME () {0;}' unless defined(&CLOCK_REALTIME);
	if(defined(&__BSD_VISIBLE)) {
	    eval 'sub CLOCK_VIRTUAL () {1;}' unless defined(&CLOCK_VIRTUAL);
	    eval 'sub CLOCK_PROF () {2;}' unless defined(&CLOCK_PROF);
	}
	eval 'sub CLOCK_MONOTONIC () {4;}' unless defined(&CLOCK_MONOTONIC);
	eval 'sub CLOCK_UPTIME () {5;}' unless defined(&CLOCK_UPTIME);
	eval 'sub CLOCK_UPTIME_PRECISE () {7;}' unless defined(&CLOCK_UPTIME_PRECISE);
	eval 'sub CLOCK_UPTIME_FAST () {8;}' unless defined(&CLOCK_UPTIME_FAST);
	eval 'sub CLOCK_REALTIME_PRECISE () {9;}' unless defined(&CLOCK_REALTIME_PRECISE);
	eval 'sub CLOCK_REALTIME_FAST () {10;}' unless defined(&CLOCK_REALTIME_FAST);
	eval 'sub CLOCK_MONOTONIC_PRECISE () {11;}' unless defined(&CLOCK_MONOTONIC_PRECISE);
	eval 'sub CLOCK_MONOTONIC_FAST () {12;}' unless defined(&CLOCK_MONOTONIC_FAST);
	eval 'sub CLOCK_SECOND () {13;}' unless defined(&CLOCK_SECOND);
	eval 'sub CLOCK_THREAD_CPUTIME_ID () {14;}' unless defined(&CLOCK_THREAD_CPUTIME_ID);
	eval 'sub CLOCK_PROCESS_CPUTIME_ID () {15;}' unless defined(&CLOCK_PROCESS_CPUTIME_ID);
    }
    if(!defined(&TIMER_ABSTIME)  && (defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
	if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	    eval 'sub TIMER_RELTIME () {0x;}' unless defined(&TIMER_RELTIME);
	}
	eval 'sub TIMER_ABSTIME () {0x1;}' unless defined(&TIMER_ABSTIME);
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef)) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef)) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199309) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199506) {
    }
    if((defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef)) {
    }
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200809|| defined(&_XLOCALE_H_)) {
	require 'xlocale/_time.ph';
    }
}
1;
