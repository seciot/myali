.class public abstract Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected d:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/graphics/drawable/Drawable;
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->finish()V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "searchResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->setResult(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->p:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setEmptyView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v2, "3,8"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getLastImgButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setLastImgBg(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/y;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/y;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/z;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/z;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
