package sexy.tea.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sexy.tea.model.common.Result;
import sexy.tea.model.dto.ShoppingRecordDto;
import sexy.tea.service.ShoppingRecordService;

/**
 * 购物车控制器
 *
 * @author 大大大西西瓜皮🍉
 * @summary
 * @since 2020-11-3 下午 02:46
 */
@RestController
@RequestMapping("/shopping")
@Slf4j
public class ShoppingRecordController {

    private final ShoppingRecordService service;

    @Autowired
    public ShoppingRecordController(ShoppingRecordService service) {
        this.service = service;
    }

    @GetMapping("/find/{pageNum}/{pageSize}")
    public Result find(@PathVariable int pageNum, @PathVariable int pageSize) {
        return service.find(pageNum, pageSize);
    }

    @GetMapping("/findByUid/{uid}")
    public Result findByUid(@PathVariable Long uid) {
        return service.findByUid(uid);
    }

    @PostMapping("/add")
    public Result add(@RequestBody ShoppingRecordDto dto) {
        return service.saveOrUpdate(dto);
    }

    @PutMapping("/update")
    public Result update(@RequestBody ShoppingRecordDto dto) {
        return service.saveOrUpdate(dto);
    }

    @DeleteMapping("/delete/{uid}")
    public Result delete(@PathVariable Long uid) {
        return service.delete(uid);
    }
}
