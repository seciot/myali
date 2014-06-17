.class public Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"


# static fields
.field public static IMAGE_STORAGE_GROUP:Ljava/lang/String; = null

.field public static IMAGE_STORAGE_OWNER:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "ImageLoaderHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "PublicHomeImageOwner"

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->IMAGE_STORAGE_OWNER:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "publicHomeImageGroup"

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->IMAGE_STORAGE_GROUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    .line 185
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;->canceled:Z

    .line 191
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->cancelLoadAvatarIcon(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;)V
    :try_end_0
    .catch Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cancelLoadAvatarIcon(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 251
    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 253
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->cancel(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException;

    const-string/jumbo v1, "cancelLoadAvatarIcon holder ImageLoaderTag doesn\'t exist "

    invoke-direct {v0, v1}, Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadAvatarIcon(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 217
    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 219
    const-class v4, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move-object v7, v0

    .line 221
    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;-><init>(Lcom/alipay/mobile/framework/service/common/ImageLoaderService;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;II)V

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException;

    const-string/jumbo v2, "loadAvatarIcon holder ImageLoaderTag doesn\'t exist "

    invoke-direct {v1, v2}, Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadHeadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;Landroid/os/Handler;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->a(Landroid/widget/ImageView;)V

    .line 46
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p2, p0}, Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;->loadDefaultImage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;->isNeedShowLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p2, p0}, Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;->loadLoadingImage(Landroid/widget/ImageView;)V

    .line 54
    :cond_2
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->setUrl(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    invoke-direct {v1, p3, p2, p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;-><init>(Landroid/os/Handler;Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;Landroid/widget/ImageView;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->setListener(Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    :try_start_0
    invoke-static {v0, p4, p5}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->loadAvatarIcon(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;II)V
    :try_end_0
    .catch Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static loadHeadImage(Landroid/widget/ImageView;Ljava/lang/String;ZIILandroid/os/Handler;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->a(Landroid/widget/ImageView;)V

    .line 127
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_1
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;-><init>()V

    .line 134
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->setUrl(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    invoke-direct {v1, p5, p0, p3}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;-><init>(Landroid/os/Handler;Landroid/widget/ImageView;I)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->setListener(Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 172
    :try_start_0
    invoke-static {v0, p6, p7}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->loadAvatarIcon(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;II)V
    :try_end_0
    .catch Lcom/alipay/mobile/android/main/publichome/util/exception/ImageLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method
