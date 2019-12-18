#![no_std]
use libc;

extern {
    pub fn printf(arg1: *const libc::c_char, ...) -> libc::c_int;
}

#[no_mangle]
extern "C" fn greet() -> u8 {
    unsafe {
        printf("hello\n".as_ptr() as *const libc::c_char);
    }
    0
}

#[cfg(test)]
mod tests {
    #[test]
    fn test_hi() {
        super::greet();
    }
}