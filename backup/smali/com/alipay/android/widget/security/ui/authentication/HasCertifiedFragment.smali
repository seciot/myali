.class public Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_has_certified"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "authentication_btn"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_name"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_ID"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_status"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_status_tip"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_status_tip_1"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "imgLayout"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tipText"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected n:Landroid/view/View$OnClickListener;

.field private o:Z

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->o:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->o:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "realName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "certNo"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    const-string/jumbo v1, "5107"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u4f60\u5df2\u901a\u8fc7\u5b9e\u540d\u8ba4\u8bc1\uff0c\u4f46\u672a\u5b8c\u6210\u8bc1\u4ef6\u5ba1\u6838"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, "\u672a\u4e0a\u4f20"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u62cd\u6444\u5e76\u4e0a\u4f20\u8eab\u4efd\u8bc1\uff0c\u53ef\u5927\u5e45\u63d0\u9ad8\u8d26\u6237\u5b89\u5168\u7b49\u7ea7\u548c\u4ea4\u6613\u6536\u4ed8\u6b3e\u989d\u5ea6\u3002"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "attestationDetail"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Y"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "5108"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "\u4f60\u5df2\u901a\u8fc7\u5b9e\u540d\u8ba4\u8bc1\uff0c\u4f46\u672a\u5b8c\u6210\u8bc1\u4ef6\u5ba1\u6838"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v2, "\u8fdb\u884c\u4e2d"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v1, "applyTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "\u5df2"

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u63d0\u4ea4\uff0c\u9884\u8ba12\u4e2a\u5de5\u4f5c\u65e5\u5185\u5ba1\u6838\u5b8c\u6210\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "5109"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x4160

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, "\u5df2\u901a\u8fc7"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "5120"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->o:Z

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "\u4f60\u5df2\u901a\u8fc7\u5b9e\u540d\u8ba4\u8bc1\uff0c\u4f46\u672a\u5b8c\u6210\u8bc1\u4ef6\u5ba1\u6838"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorBlue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v2, "\u91cd\u65b0\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8bc1\u4ef6\u5ba1\u6838\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0a\u4f20\u3002\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "failReason"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "5122"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u4f60\u5df2\u901a\u8fc7\u5b9e\u540d\u8ba4\u8bc1\uff0c\u4f46\u8bc1\u4ef6\u5c06\u8fc7\u671f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, "\u5c06\u8fc7\u671f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u91cd\u65b0\u4e0a\u4f20\u8eab\u4efd\u8bc1\uff0c\u903e\u671f\u4f1a\u5f71\u54cd\u8d26\u6237\u7684\u6536\u6b3e\u529f\u80fd\u3002"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "5121"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u4f60\u5df2\u901a\u8fc7\u5b9e\u540d\u8ba4\u8bc1\uff0c\u4f46\u8bc1\u4ef6\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u91cd\u65b0\u4e0a\u4f20\u8eab\u4efd\u8bc1\uff0c\u786e\u4fdd\u8d26\u6237\u80fd\u6b63\u5e38\u6536\u6b3e\u3002"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
