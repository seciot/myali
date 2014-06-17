.class public abstract Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Ljava/lang/Object;",
        "Res:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CACHE_DIR:Ljava/lang/String; = "rpc_cache"

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "rpc_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readFile failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onPreExecute()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onRpcRequest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onPostExecute()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/alipay/mobileprod/core/model/BaseRespVO;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobileprod/core/model/BaseRespVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;->getResultStatus()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "rpc_cache"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onSuccess(Ljava/lang/Object;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onPostExecute()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "File write failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onFail(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$4;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$4;-><init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$5;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$5;-><init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableCache(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public executeBackground(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b:Z

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public executeForeground(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b:Z

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public loadCache(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;)TRes;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onFail(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRes;)V"
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rpc onFail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/alipay/mobileprod/core/model/BaseRespVO;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/core/model/BaseRespVO;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPostExecute()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;-><init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRpcException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_wait_retry:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_check_network:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_check_network:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onRpcRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;)TRes;"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRes;)V"
        }
    .end annotation
.end method
