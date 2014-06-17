.class public Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reflectCreateInterceptor(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "promoType"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "click_jump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    invoke-direct {v2}, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;-><init>()V

    const-string/jumbo v3, "click"

    iput-object v3, v2, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->type:Ljava/lang/String;

    const-string/jumbo v3, "clientTriggerId"

    invoke-static {p1, v3}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    new-instance v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;

    invoke-direct {v3}, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;-><init>()V

    const-string/jumbo v4, "clientAppId"

    invoke-static {p1, v4}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    const-string/jumbo v4, "clientPageId"

    invoke-static {p1, v4}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->triggerId:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->type:Ljava/lang/String;

    const-string/jumbo v1, "clientTargetAppId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    const-string/jumbo v1, "clientTargetPageId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;

    invoke-direct {v1}, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;-><init>()V

    const-string/jumbo v4, "clientRedirectUrl"

    invoke-static {p1, v4}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;->redirectUrl:Ljava/lang/String;

    const-string/jumbo v4, "title"

    invoke-static {p1, v4}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;->title:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/alipay/mobile/common/promotion/intercept/interceptor/ClickInterceptor;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/ClickInterceptor;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/action/JumpAction;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/promotion/intercept/action/JumpAction;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;)V

    new-instance v1, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->setPreAction(Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "rpc_jump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;

    invoke-direct {v0}, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;-><init>()V

    const-string/jumbo v2, "clientAppId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->appId:Ljava/lang/String;

    const-string/jumbo v2, "clientPageId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->pageId:Ljava/lang/String;

    const-string/jumbo v2, "clientTargetAppId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetAppId:Ljava/lang/String;

    const-string/jumbo v2, "clientTargetPageId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->targetPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;->type:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;

    invoke-direct {v1}, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;-><init>()V

    const-string/jumbo v2, "clientRedirectUrl"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;->redirectUrl:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;->title:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/JumpInterceptorDesc;)V

    new-instance v0, Lcom/alipay/mobile/common/promotion/intercept/action/JumpAction;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/action/JumpAction;-><init>(Lcom/alipay/mobile/common/promotion/intercept/desc/JumpActionDesc;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->setPostAction(Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static reflectGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
