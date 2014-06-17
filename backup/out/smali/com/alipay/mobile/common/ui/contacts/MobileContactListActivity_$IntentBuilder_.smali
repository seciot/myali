.class public Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public flags(I)Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startForResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
