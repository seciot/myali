.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;->a:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;->a:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V

    return-void
.end method
