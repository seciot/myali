.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iput p2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x64

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$anim;->c:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$anim;->c:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;->b:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$anim;->c:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
