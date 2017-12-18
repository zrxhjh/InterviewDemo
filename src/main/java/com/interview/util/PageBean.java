package com.interview.util;

import com.github.pagehelper.Page;

import java.io.Serializable;
import java.util.List;

/**
 * 通用分页工具类.
 * 依赖：
 * PageHelper 分页依赖
 *
 * @param <T> 类型
 * @author rxliuli
 */
public class PageBean<T> implements Serializable {
  private static final long serialVersionUID = 8656597559014685635L;

  /**
   * 总记录数
   */
  private long total;
  /**
   * 结果集
   */
  private List<T> list;
  /**
   * 第几页
   */
  private int pageNum;
  /**
   * 每页记录数
   */
  private int pageSize;
  /**
   * 总页数
   */
  private int pages;
  /**
   * 当前页的数量 <= PAGE_SIZE，该属性来自ArrayList的size属性
   */
  private int size;

  /**
   * 包装Page对象，因为直接返回Page对象，在JSON处理以及其他情况下会被当成List来处理，
   * 而出现一些问题。
   *
   * @param list page结果
   */
  public PageBean(List<T> list) {
    if (list instanceof Page) {
      Page<T> page = (Page<T>) list;
      this.pageNum = page.getPageNum();
      this.pageSize = page.getPageSize();
      this.total = page.getTotal();
      this.pages = page.getPages();
      this.list = page;
      this.size = page.size();
    }
  }

  public long getTotal() {
    return total;
  }

  public void setTotal(long total) {
    this.total = total;
  }

  public List<T> getList() {
    return list;
  }

  public void setList(List<T> list) {
    this.list = list;
  }

  public int getPageNum() {
    return pageNum;
  }

  public void setPageNum(int pageNum) {
    this.pageNum = pageNum;
  }

  public int getPageSize() {
    return pageSize;
  }

  public void setPageSize(int pageSize) {
    this.pageSize = pageSize;
  }

  public int getPages() {
    return pages;
  }

  public void setPages(int pages) {
    this.pages = pages;
  }

  public int getSize() {
    return size;
  }

  public void setSize(int size) {
    this.size = size;
  }

  @Override
  public String toString() {
    return "PageBean{" +
        "total=" + total +
        ", list=" + list +
        ", pageNum=" + pageNum +
        ", pageSize=" + pageSize +
        ", pages=" + pages +
        ", size=" + size +
        '}';
  }
}
