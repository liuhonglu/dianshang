package com.jk.controller.lhl;

import com.jk.controller.lhl.BaseController;
import com.jk.model.Item;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yangzhichao on 2018-07-10.
 */
@Controller
@RequestMapping("/item")
public class ItemController extends BaseController {

    @RequestMapping("/queryItem")
    @RequiresPermissions("item:query")
    public String queryItem(Model model) {
        //去数据库中查询商品信息
        List<Item> itemList = new ArrayList<Item>();
        model.addAttribute("itemList", itemList);
        return "jsp/itemsList";
    }
}
