package sexy.tea.service;

import sexy.tea.model.Selection;
import sexy.tea.model.common.Result;

import java.util.List;

/**
 * author 大大大西西瓜皮🍉
 * date 15:10 2020-09-26
 * description:
 */
public interface SelectionService extends UploadService {


    int updateBatch(List<Selection> list);

    int updateBatchSelective(List<Selection> list);

    int batchInsert(List<Selection> list);

    int insertOrUpdate(Selection record);

    int insertOrUpdateSelective(Selection record);

    Result find(int pageNum, int pageSize);

    Result findByPrimaryKey(Integer primaryKey);

    Result saveOrUpdate(Selection selection);

    // Result uploadImage(MinioDto dto, String productId);

    Result delete(Integer id);

    Result findByName(String name, int pageNum, int pageSize);
}
