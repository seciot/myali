.class public final Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$5;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
