contract Token {
    use dep::value_note::{
        balance_utils,
        utils::{increment, decrement},
        value_note::{VALUE_NOTE_LEN, ValueNote, ValueNoteMethods},
    };
    use dep::aztec::{
        context::Context,
        note::{
            note_header::NoteHeader,
            utils as note_utils,
        },
        state_vars::{map::Map, set::Set},
    };

    struct Storage {
        // IMPLEMENT
    }

    impl Storage {
        fn init(context: Context) -> pub Self {
            // IMPLEMENT
        }
    }
   
    #[aztec(private)]
    fn constructor(
        initial_supply: Field, 
        owner: Field
    )  {
        // IMPLEMENT
    }
    
    #[aztec(private)]
    fn mint(
        amount: Field, 
        owner: Field
    )  {
        // IMPLEMENT
    }

    #[aztec(private)]
    fn transfer(
        amount: Field, 
        recipient: Field,
    )  {
        // IMPLEMENT
    }

    unconstrained fn get_balance(owner: Field) -> Field {
        let owner_notes = storage.balances.at(owner);
        balance_utils::get_balance(owner_notes)
    }

    unconstrained fn compute_note_hash_and_nullifier(contract_address: Field, nonce: Field, storage_slot: Field, serialized_note: [Field; VALUE_NOTE_LEN]) -> [Field; 4] {
        let note_header = NoteHeader::new(contract_address, nonce, storage_slot);
        note_utils::compute_note_hash_and_nullifier(ValueNoteMethods, note_header, serialized_note)
    }
}
