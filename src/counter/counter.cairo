#[starknet::interface]
trait ICounter<T> {
    fn get_counter(self: @T) -> u32;
    fn increase_counter(ref self: T);
    fn decrease_counter(ref self: T);
    fn reset_counter(ref self: T);
}


#[starknet::contract]
mod Counter {
    use super::ICounter;
    use starknet::ContractAddress;
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    #[storage]
    struct Storage {
        counter: u32,
    }

    #[constructor]
    fn constructor(ref self: ContractState) {}

    #[abi(embed_v0)]
    impl CounterImpl of ICounter<ContractState> {
        fn get_counter(self: @ContractState) -> u32 {
           self.counter.read()
        }
        fn increase_counter(ref self: T) {
            let counter = self.counter.read();
            self.counter.write(counter + 1);
        }
        fn decrease_counter(ref self: T) {
            let counter = self.counter.read();
            self.counter.write(counter - 1);
        }
        fn reset_counter(ref self: T) {
            self.counter.write(0);
        }
    }
}
