package com.global.mapper;

import java.util.List;

import com.global.vo.BoardVO;

public interface BoardMapper {
	
	public int insert(BoardVO boardVO);
	
	public List<BoardVO> select();
}
