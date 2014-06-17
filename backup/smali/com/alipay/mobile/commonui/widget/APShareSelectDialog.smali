.class public Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;
.super Lcom/alipay/mobile/commonui/widget/APDialog;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

.field mShareType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->share_select_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->mShareType:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x2

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->mShareType:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$1;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->setOnShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->btn_cancel:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
