.class public Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->b:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->b:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->b:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/a;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/data/a;-><init>(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;B)V

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/data/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "data1"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_1
    :goto_1
    const-string/jumbo v1, "display_name"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    move-object v2, v1

    :goto_2
    if-nez v0, :cond_4

    move v1, v6

    :goto_3
    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v1}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "[-| ]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "[(|)]"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "1\\d{10}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v3}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
