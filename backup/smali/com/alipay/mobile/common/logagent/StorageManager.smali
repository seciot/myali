.class public Lcom/alipay/mobile/common/logagent/StorageManager;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

.field private k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logagent/StorageManager;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ",%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->g:Ljava/lang/String;

    const-string/jumbo v0, ",%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->h:Ljava/lang/String;

    const-string/jumbo v0, "e,%s,%s,%s,1,%s,,%s,%s,%s,%s,%s,%s,%s,%s$$"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->isRegisted()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->initClient(Landroid/content/Context;)V

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object p3, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->n:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->o:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->p:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->q:Ljava/lang/String;

    iput-object p11, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->r:Ljava/lang/String;

    iput-object p12, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->s:Ljava/lang/String;

    iput-object p13, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v14}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->o:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->p:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->q:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->r:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, p7, v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->s:Ljava/lang/String;

    move-object/from16 v0, p7

    array-length v1, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    move-object/from16 v0, p7

    array-length v1, v0

    add-int/lit8 v1, v1, -0x6

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x6

    aget-object v3, p7, v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ",%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->g:Ljava/lang/String;

    const-string/jumbo v0, ",%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->h:Ljava/lang/String;

    const-string/jumbo v0, "e,%s,%s,%s,1,%s,,%s,%s,%s,%s,%s,%s,%s,%s$$"

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->isRegisted()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->initClient(Landroid/content/Context;)V

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object p4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->v:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 19

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v18, p6

    invoke-direct/range {v5 .. v18}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/logagent/StorageManager;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 19

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    move-object/from16 v18, p7

    invoke-direct/range {v5 .. v18}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/logagent/StorageManager;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    packed-switch p3, :pswitch_data_0

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->p:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->o:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/logagent/StorageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    const/16 v0, 0x11

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->getNowTime()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "productID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "productVersion"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "clientID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "uuID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v4, "userID"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v2, v4

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v2, v4

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    aput-object v0, v2, v4

    const/16 v4, 0x9

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_3
    aput-object v0, v2, v4

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->n:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_4
    aput-object v0, v2, v4

    const/16 v4, 0xb

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    :goto_5
    aput-object v0, v2, v4

    const/16 v4, 0xc

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->o:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_6
    aput-object v0, v2, v4

    const/16 v4, 0xd

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->p:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    :goto_7
    aput-object v0, v2, v4

    const/16 v4, 0xe

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->q:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, ""

    :goto_8
    aput-object v0, v2, v4

    const/16 v4, 0xf

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->r:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    const-string/jumbo v0, "u"

    :goto_9
    aput-object v0, v2, v4

    const/16 v4, 0x10

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->s:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    const-string/jumbo v0, "c"

    :goto_a
    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->t:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_b
    if-ge v1, v6, :cond_d

    aget-object v2, v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ","

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_b

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->n:Ljava/lang/String;

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->o:Ljava/lang/String;

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->p:Ljava/lang/String;

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->q:Ljava/lang/String;

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->r:Ljava/lang/String;

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->s:Ljava/lang/String;

    goto :goto_a

    :cond_d
    :goto_c
    if-ge v0, v9, :cond_e

    const-string/jumbo v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/LogUtil;->logOnlyDebuggable(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "/logs"

    const-string/jumbo v3, "/userlog.log"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->writeToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->checkAndSend(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/logagent/StorageManager;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "e,%s,%s,%s,1,%s,,%s,%s,%s,%s,%s,%s,%s,%s$$"

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->getNowTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "productID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "productVersion"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "clientID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v5, "userID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x6

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "N"

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x7

    const-string/jumbo v1, ""

    aput-object v1, v3, v0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    aput-object v0, v3, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    aput-object v0, v3, v1

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_4
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/LogUtil;->logOnlyDebuggable(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "/logs"

    const-string/jumbo v3, "/userlog.log"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->writeToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->checkAndSend(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Y"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->m:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x16

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->getNowTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "productID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "productVersion"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "clientID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "uuID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "userID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x6

    const-string/jumbo v0, "MonitorPoint_ConnectErr"

    iget-object v3, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "netBroken"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x7

    const-string/jumbo v2, "E"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string/jumbo v2, "s"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string/jumbo v2, "c"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/LogUtil;->logOnlyDebuggable(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "/logs"

    const-string/jumbo v3, "/userlog.log"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->writeToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->checkAndSend(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string/jumbo v0, "flashBroken"

    goto/16 :goto_0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->getNowTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "productID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "productVersion"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "clientID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "uuID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    const-string/jumbo v3, "userID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v1, v2

    const/16 v0, 0x8

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->v:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StorageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/LogUtil;->logOnlyDebuggable(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "/logs"

    const-string/jumbo v3, "/userlog.log"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->writeToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->checkAndSend(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->v:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public writeLog()V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/logagent/StorageManager;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;-><init>(Lcom/alipay/mobile/common/logagent/StorageManager;Lcom/alipay/mobile/common/logagent/StorageManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
