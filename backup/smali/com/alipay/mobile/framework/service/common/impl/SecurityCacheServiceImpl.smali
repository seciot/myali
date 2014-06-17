.class public Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SecurityCacheService;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private d:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;-><init>()V

    const-string/jumbo v0, "SecurityCacheServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    const v0, 0x278d00

    iput v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->h:I

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "decrypt result: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, p3, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    const-class v1, [B

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const-class v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->remove(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->h:I

    int-to-long v7, v0

    const-string/jumbo v9, "txt"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V
    .locals 16

    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, p4

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v5, v4}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "encrypt result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v8, v4

    :goto_2
    if-eqz v8, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    invoke-virtual/range {v4 .. v13}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    check-cast p4, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v8, v5

    goto :goto_2

    :catch_1
    move-exception v4

    move v4, v5

    :goto_4
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move v14, v5

    :goto_5
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    :cond_6
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_5

    :catch_2
    move-exception v4

    move v4, v14

    goto :goto_4

    :cond_7
    move v14, v5

    goto :goto_3
.end method
