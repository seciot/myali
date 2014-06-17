.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;
.super Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;


# static fields
.field private static e:J

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field private c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

.field private d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x757b12c00L

    sput-wide v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->e:J

    const-string/jumbo v0, "qrCode"

    sput-object v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, -0x1

    invoke-virtual {v3, v0, v2, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object v3
.end method


# virtual methods
.method public findQrCode(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->putCacheQrCodeData(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getByteArrByUrl(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x5000

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/16 v1, 0x1400

    :try_start_2
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{[info=getByteArrByUrl], [msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_3
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_5
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v3, v0

    goto :goto_2
.end method

.method public getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    const-string/jumbo v2, "accountQrCode"

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{[info=getCacheQrCodeData], [msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getCacheQrCodeData(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode$BitmapListener;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQrCodeDataByRpc()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/financial/account/api/SecurityQrCodeManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/financial/account/api/SecurityQrCodeManager;

    invoke-interface {v0}, Lcom/alipay/kabaoprod/biz/financial/account/api/SecurityQrCodeManager;->getAccountQrCodeInfo()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public putCacheQrCodeData(Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->getQrCodeDataByRpc()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcodeImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcodeImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->getByteArrByUrl(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-direct {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->setAccountQrCodeInfoResult(Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->setQrCodeImgByteArr([B)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-nez v0, :cond_5

    move-object v5, v2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcodeImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->c:Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcodeImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    const-string/jumbo v3, "accountQrCode"

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->d:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->e:J

    sget-object v10, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;->f:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->put2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[BJJLjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public saveQrImgToDCIM(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;Landroid/graphics/Bitmap;Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
