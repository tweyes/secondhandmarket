package com.secondary.market.controller;

import com.secondary.market.service.CatelogService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 *
 * 商品分类
 */

@Controller
public class CatelogController {
    @Resource
    private CatelogService catelogService;

}
