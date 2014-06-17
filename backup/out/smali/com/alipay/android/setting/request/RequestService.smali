.class public Lcom/alipay/android/setting/request/RequestService;
.super Landroid/app/IntentService;

# interfaces
.implements Lcom/alipay/android/setting/request/IRequest;


# static fields
.field private static c:Landroid/util/SparseArray;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/setting/request/RequestContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/android/setting/operator/GetSwitchState;

    invoke-direct {v2}, Lcom/alipay/android/setting/operator/GetSwitchState;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/alipay/android/setting/operator/SetNoPasswordState;

    invoke-direct {v2}, Lcom/alipay/android/setting/operator/SetNoPasswordState;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/alipay/android/setting/operator/SetMiniCashierState;

    invoke-direct {v2}, Lcom/alipay/android/setting/operator/SetMiniCashierState;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/alipay/android/setting/operator/GetMiniCashierChannel;

    invoke-direct {v2}, Lcom/alipay/android/setting/operator/GetMiniCashierChannel;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/alipay/android/setting/operator/SetMiniCashierChannel;

    invoke-direct {v2}, Lcom/alipay/android/setting/operator/SetMiniCashierChannel;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "alipay_mini_setting"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/MspConfig;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)V
    .locals 3

    if-eqz p3, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {p0, v0, p1, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.setting.REQUEST_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "flag"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alipay/android/setting/request/RequestService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.setting.REQUEST_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/request/RequestService;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/setting/request/RequestService;->a:I

    iget v0, p0, Lcom/alipay/android/setting/request/RequestService;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "local_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/request/RequestContainer;

    iput-object v0, p0, Lcom/alipay/android/setting/request/RequestService;->b:Lcom/alipay/android/setting/request/RequestContainer;

    :cond_0
    sget-object v0, Lcom/alipay/android/setting/request/RequestService;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/alipay/android/setting/request/RequestService;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/request/IRequestOperator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/setting/request/RequestService;->b:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-interface {v0, p0, v1}, Lcom/alipay/android/setting/request/IRequestOperator;->a(Lcom/alipay/android/setting/request/IRequest;Lcom/alipay/android/setting/request/RequestContainer;)V

    :cond_1
    return-void
.end method
