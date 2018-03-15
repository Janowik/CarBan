package com.bellcode.Repository;

import com.bellcode.Model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {

    @Query("SELECT p FROM Comment p where p.vin_number = :vinNumber")
    List<Comment> findCommentByVin_number(@Param("vinNumber") String vinNumber);
}
