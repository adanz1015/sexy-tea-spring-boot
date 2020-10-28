package sexy.tea.service;

import sexy.tea.model.Food;
import sexy.tea.model.common.Result;

import java.util.List;

/**
 * author 大大大西西瓜皮🍉
 * date 15:10 2020-09-26
 * description:
 */
public interface FoodService extends UploadService {

    int updateBatch(List<Food> list);

    int updateBatchSelective(List<Food> list);

    int batchInsert(List<Food> list);

    int insertOrUpdate(Food record);

    int insertOrUpdateSelective(Food record);

    Result find(int pageNum, int pageSize);

    Result findByPrimaryKey(Long primaryKey);

    Result saveOrUpdate(Food food);

    Result delete(Long id);

    Result findByName(String name, int pageNum, int pageSize);
}
