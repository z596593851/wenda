package com.hxm.wenda.async.handler;

import com.hxm.wenda.async.EventHandler;
import com.hxm.wenda.async.EventModel;
import com.hxm.wenda.async.EventType;
import com.hxm.wenda.model.Message;
import com.hxm.wenda.model.User;
import com.hxm.wenda.service.MessageService;
import com.hxm.wenda.service.UserService;
import com.hxm.wenda.util.WendaUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by nowcoder on 2016/7/30.
 */
@Component
public class LikeHandler implements EventHandler {
    @Autowired
    MessageService messageService;

    @Autowired
    UserService userService;

    @Override
    public void doHandle(EventModel model) {
        Message message = new Message();
        int fromId=WendaUtil.SYSTEM_USERID;
        int toId=model.getEntityOwnerId();
        message.setFromId(fromId);
        message.setToId(toId);
        message.setCreatedDate(new Date());
        message.setConversationId(fromId < toId ? String.format("%d_%d", fromId, toId) : String.format("%d_%d", toId, fromId));
        User user = userService.getUser(model.getActorId());
        message.setContent("用户" + user.getName()
                + "赞了你的评论,http://127.0.0.1:8080/question/" + model.getExt("questionId"));

        messageService.addMessage(message);
    }

    @Override
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.LIKE);
    }
}
