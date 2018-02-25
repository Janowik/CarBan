package com.bellcode.Repository;

import com.bellcode.Model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository()
public interface RoleRepository extends JpaRepository<Role, Integer> {
    Role findByRole(String role);
}
