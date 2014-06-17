.class public Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;
.super Lcom/alipay/mobile/browser/HtmlActivityV2;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->a:Z

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/x;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/x;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->loadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->init()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->more_title:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/alipassapp/R$drawable;->title_refresh:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/alipassapp/ui/y;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method protected needLoginAndLoadUrl()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->a:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->a:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->a:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->init()V

    return-void
.end method
