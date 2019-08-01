static __thread int tls_int = 0;

void set_tls_int(int tls_int_val) {
    tls_int = tls_int_val;
}

int get_tls_int(void) {
    return tls_int;
}
