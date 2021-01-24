package com.chen.common.exception;

/**自定义业务异常*/
public class ServiceException extends  RuntimeException{
    private static final long serialVersionUID = -5598865415547474216L;
    public ServiceException() {
    }
    public ServiceException(String message) {
        super(message);
    }
    public ServiceException(Throwable cause) {
        super(cause);
    }
}
//UnKnownAccountException()
//LockedAccountException();
//PasswordErrorException();