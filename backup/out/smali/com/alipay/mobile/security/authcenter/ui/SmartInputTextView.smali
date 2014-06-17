.class public Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;
.super Landroid/widget/AutoCompleteTextView;


# instance fields
.field private a:I

.field private b:Lcom/alipay/mobile/security/authcenter/a/c;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->c:Z

    return-void
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->b:Lcom/alipay/mobile/security/authcenter/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->b:Lcom/alipay/mobile/security/authcenter/a/c;

    :cond_0
    return-void
.end method

.method public enoughToFilter()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getThreshold()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    return v0
.end method

.method public registerDismissDropDownListener(Lcom/alipay/mobile/security/authcenter/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->b:Lcom/alipay/mobile/security/authcenter/a/c;

    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->c:Z

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->a:I

    return-void
.end method
