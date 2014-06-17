.class public interface abstract Lcom/alipay/statusbar/common/sal/mobilegw/StatusbarTodoFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract pageQueryTodoList(Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;)Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.webplatform.statusbar.todo.query"
    .end annotation
.end method

.method public abstract removeToHistory(Ljava/util/List;)Ljava/util/Map;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.webplatform.statusbar.todo.remove"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemoveRequest;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
