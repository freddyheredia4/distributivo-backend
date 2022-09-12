package edu.yavirac.distributivobackend.auth.security;
import java.util.List;

import lombok.Data;

@Data()
public class UserDTO {
    private long total;
    private long page;
    private long totalPages;
    private long capacity;
    private List<User> users;
}
