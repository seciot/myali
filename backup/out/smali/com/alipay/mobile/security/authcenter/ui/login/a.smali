.class public final Lcom/alipay/mobile/security/authcenter/ui/login/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/authcenter/ui/login/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private c:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/alipay/mobile/commonui/widget/APImageButton;Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->b:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/b;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->b:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->b:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a;->b:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_0
.end method
